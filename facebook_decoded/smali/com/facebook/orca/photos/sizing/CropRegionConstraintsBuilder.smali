.class public Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
.super Ljava/lang/Object;
.source "CropRegionConstraintsBuilder.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x3e19999a

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a:F

    .line 11
    iput v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b:F

    .line 12
    iput v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a:F

    return v0
.end method

.method public final a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a:F

    .line 21
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 48
    return-object p0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b:F

    return v0
.end method

.method public final b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b:F

    .line 30
    return-object p0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c:F

    return v0
.end method

.method public final c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c:F

    .line 39
    return-object p0
.end method

.method public final d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    return-object v0
.end method

.method public final e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;-><init>(Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;)V

    return-object v0
.end method
