.class public Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;
.super Ljava/lang/Object;
.source "GraphicSizerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;
    .locals 1
    .parameter

    .prologue
    .line 14
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;-><init>(Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)V

    return-object v0
.end method
