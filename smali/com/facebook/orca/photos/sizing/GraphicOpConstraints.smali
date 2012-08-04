.class public Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
.super Ljava/lang/Object;
.source "GraphicOpConstraints.java"


# instance fields
.field private final a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

.field private final b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Z

.field private volatile h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->f()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c:I

    .line 30
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d:I

    .line 31
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e:I

    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f:I

    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->g:Z

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 7

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->g:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/facebook/orca/images/UrlImageProcessor;->a:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 66
    const-string v0, ":"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->e()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->c()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->h:Ljava/lang/String;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 66
    :cond_2
    const-string v0, "null"

    goto :goto_1

    :cond_3
    const-string v0, "null"

    goto :goto_2
.end method
