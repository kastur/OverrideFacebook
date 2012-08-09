.class public Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
.super Ljava/lang/Object;
.source "CropRegionConstraints.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a:F

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b:F

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c:F

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a:F

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b:F

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c:F

    return v0
.end method

.method public final d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 42
    const-string v0, ":"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v5, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
