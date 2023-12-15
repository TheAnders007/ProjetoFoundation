import UIKit

class InformacoesViewController: UIViewController {

    var nomePlanta: String = ""
    var texxx: String = ""
    @Published var informacoesLabelText: String = ""

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.text = "Como Plantar: \(nomePlanta) 🌱"
        return label
    }()

    private lazy var informacoesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = texxx
        label.numberOfLines = 0
        label.textAlignment = .justified
        return label
    }()

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
        scrollView.alwaysBounceHorizontal = false
        return scrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white

        view.addSubview(titleLabel)
        view.addSubview(scrollView)
        scrollView.addSubview(informacoesLabel)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            scrollView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            informacoesLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            informacoesLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10),
            informacoesLabel.topAnchor.constraint(equalTo: scrollView.topAnchor),
            informacoesLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        
        // Adiciona uma restrição de largura igual à largura da view para evitar a rolagem horizontal
        informacoesLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
    }

}
