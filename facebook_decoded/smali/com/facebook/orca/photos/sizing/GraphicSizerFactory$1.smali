.class Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;
.super Lcom/facebook/orca/images/UrlImageProcessor;
.source "GraphicSizerFactory.java"


# instance fields
.field private b:Lcom/facebook/orca/photos/sizing/GraphicSizer;

.field private synthetic c:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p2, p0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;->c:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImageProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicSizer;

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;->c:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizer;-><init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;II)V

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;->b:Lcom/facebook/orca/photos/sizing/GraphicSizer;

    .line 21
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;->b:Lcom/facebook/orca/photos/sizing/GraphicSizer;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;->c:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
