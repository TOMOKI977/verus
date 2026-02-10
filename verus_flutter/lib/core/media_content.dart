// media_content.dart

class MediaItem {
  final String title;
  final String type; // "youtube"
  final String videoId; // 👈 ahora más claro: ID del video
  final String description;

  const MediaItem({
    required this.title,
    required this.type,
    required this.videoId,
    required this.description,
  });
}

class MediaContent {
  static const features = [
    MediaItem(
      title: "Transacciones automáticas",
      type: "text",
      videoId: "",
      description:
          "Registra tus operaciones sin descargar reportes, todo automático desde el exchange.",
    ),
    MediaItem(
      title: "Carga manual con comprobantes",
      type: "text",
      videoId: "",
      description:
          "Sube comprobantes en PDF o imágenes y Verus extrae los datos por ti.",
    ),
    MediaItem(
      title: "Gestión de anuncios",
      type: "text",
      videoId: "",
      description: "Administra tus anuncios P2P desde un solo lugar.",
    ),
    MediaItem(
      title: "Guía para comerciantes",
      type: "text",
      videoId: "",
      description:
          "Aprende a ser comerciante P2P con guías prácticas y legales.",
    ),
    MediaItem(
      title: "Reportes claros",
      type: "text",
      videoId: "",
      description: "Descarga reportes claros para tu contador o banco.",
    ),
    MediaItem(
      title: "Historial ilimitado",
      type: "text",
      videoId: "",
      description: "Consulta tu historial completo sin límites de tiempo.",
    ),
    MediaItem(
      title: "Alertas inteligentes",
      type: "text",
      videoId: "",
      description:
          "Recibe alertas si una transacción supera límites o tiene riesgos.",
    ),
  ];
}
