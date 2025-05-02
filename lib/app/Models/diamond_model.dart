// lib/models/diamond_model.dart

class Diamond {
  final int customerId;
  final String? barCode;
  final String? diamondType;
  final String? av;
  final String? shape;
  final String? color;
  final String? clarity;
  final String? cut;
  final String? polish;
  final String? symm;
  final String? flor;
  final double? polishWeight;
  final double? rate;
  final double? discPrct;
  final double? netRate;
  final double? netAmount;
  final String? labName;
  final String? depthPrct;
  final String? tablePrct;
  final String? certiNumber;
  final String? measurements;
  final String? crownHeight;
  final String? crownAngle;
  final String? pavilionDepth;
  final String? pavilionAngle;
  final String? culetSize;
  final String? girdlePercent;
  final String? memberComment;
  final String? brown;
  final String? milky;
  final String? natts;
  final String? keytoSymbols;
  final String? certiComment;
  final String? girdleCondition;
  final String? fancyColourName;
  final String? fancyColourIntensity;
  final String? fancyColourOvertone;
  final String? certiLink;
  final String? imageLink;
  final String? videoLink;
  final String? girdleThik;
  final String? girdleThin;
  final String? culetCondition;
  final String? laserInscription;
  final String? country;
  final String? city;
  final String? state;
  final double? ratio;
  final String? branchName;

  Diamond({
    required this.customerId,
    this.barCode,
    this.diamondType,
    this.av,
    this.shape,
    this.color,
    this.clarity,
    this.cut,
    this.polish,
    this.symm,
    this.flor,
    this.polishWeight,
    this.rate,
    this.discPrct,
    this.netRate,
    this.netAmount,
    this.labName,
    this.depthPrct,
    this.tablePrct,
    this.certiNumber,
    this.measurements,
    this.crownHeight,
    this.crownAngle,
    this.pavilionDepth,
    this.pavilionAngle,
    this.culetSize,
    this.girdlePercent,
    this.memberComment,
    this.brown,
    this.milky,
    this.natts,
    this.keytoSymbols,
    this.certiComment,
    this.girdleCondition,
    this.fancyColourName,
    this.fancyColourIntensity,
    this.fancyColourOvertone,
    this.certiLink,
    this.imageLink,
    this.videoLink,
    this.girdleThik,
    this.girdleThin,
    this.culetCondition,
    this.laserInscription,
    this.country,
    this.city,
    this.state,
    this.ratio,
    this.branchName,
  });

  factory Diamond.fromJson(Map<String, dynamic> json) {
    return Diamond(
      customerId: json['customerId'],
      barCode: json['barCode'],
      diamondType: json['diamondType'],
      av: json['av'],
      shape: json['shape'],
      color: json['color'],
      clarity: json['clarity'],
      cut: json['cut'],
      polish: json['polish'],
      symm: json['symm'],
      flor: json['flor'],
      polishWeight: (json['polishWeight'] as num?)?.toDouble(),
      rate: (json['rate'] as num?)?.toDouble(),
      discPrct: (json['discPrct'] as num?)?.toDouble(),
      netRate: (json['netRate'] as num?)?.toDouble(),
      netAmount: (json['netAmount'] as num?)?.toDouble(),
      labName: json['labName'],
      depthPrct: json['depthPrct'],
      tablePrct: json['tablePrct'],
      certiNumber: json['certiNumber'],
      measurements: json['measurements'],
      crownHeight: json['crownHeight'],
      crownAngle: json['crownAngle'],
      pavilionDepth: json['pavilionDepth'],
      pavilionAngle: json['pavilionAngle'],
      culetSize: json['culetSize'],
      girdlePercent: json['girdlePercent'],
      memberComment: json['memberComment'],
      brown: json['brown'],
      milky: json['milky'],
      natts: json['natts'],
      keytoSymbols: json['keytoSymbols'],
      certiComment: json['certiComment'],
      girdleCondition: json['girdleCondition'],
      fancyColourName: json['fancyColourName'],
      fancyColourIntensity: json['fancyColourIntensity'],
      fancyColourOvertone: json['fancyColourOvertone'],
      certiLink: json['certiLink'],
      imageLink: json['imageLink'],
      videoLink: json['videoLink'],
      girdleThik: json['girdleThik'],
      girdleThin: json['girdleThin'],
      culetCondition: json['culetCondition'],
      laserInscription: json['laserInscription'],
      country: json['country'],
      city: json['city'],
      state: json['state'],
      ratio: (json['ratio'] as num?)?.toDouble(),
      branchName: json['branchName'],
    );
  }
}
