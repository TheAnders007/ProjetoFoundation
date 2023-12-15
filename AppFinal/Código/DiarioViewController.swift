import UIKit
import Photos

class DiarioViewController: UIViewController, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var nomePlanta: String = ""

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.text = "⌜ Diário da Planta: \(nomePlanta) ☀️ ⌟"
        return label
    }()

    private lazy var textoTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.delegate = self
        return textView
    }()

    private lazy var cameraButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Anexar Imagem", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(camera), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        carregarDadosSalvos()
    }

    private func setupUI() {
        view.backgroundColor = .white

        view.addSubview(titleLabel)
        view.addSubview(textoTextView)
        view.addSubview(cameraButton)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            textoTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            textoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textoTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textoTextView.bottomAnchor.constraint(equalTo: cameraButton.topAnchor, constant: -10),

            cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cameraButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }

    func carregarDadosSalvos() {
        let chave = "diario_planta_\(nomePlanta)"
        if let attributedTextData = UserDefaults.standard.data(forKey: chave),
           let attributedText = try? NSKeyedUnarchiver.unarchivedObject(ofClass: NSAttributedString.self, from: attributedTextData) {
            textoTextView.attributedText = attributedText
        }
    }

    @objc private func salvarDiario() {
        if let attributedText = textoTextView.attributedText {
            let chave = "diario_planta_\(nomePlanta)"
            if let attributedTextData = try? NSKeyedArchiver.archivedData(withRootObject: attributedText, requiringSecureCoding: false) {
                UserDefaults.standard.set(attributedTextData, forKey: chave)
            }
        }
    }

    @objc private func camera() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }

    func textViewDidChange(_ textView: UITextView) {
        salvarDiario()
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            let scaledImage = scaleImage(image, toSize: CGSize(width: 300, height: 300)) // Tamanho fixo para as imagens
            let textAttachment = NSTextAttachment()
            textAttachment.image = scaledImage
            let imageString = NSAttributedString(attachment: textAttachment)

            let mutableAttributedString = NSMutableAttributedString(attributedString: textoTextView.attributedText)
            mutableAttributedString.append(imageString)

            textoTextView.attributedText = mutableAttributedString

            picker.dismiss(animated: true, completion: nil)

            salvarDiario()
        }
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

    func scaleImage(_ image: UIImage, toSize newSize: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage ?? UIImage()
    }
}
