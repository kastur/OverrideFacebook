.class Lcom/facebook/orca/photos/view/GalleryWithSwipingFix$1;
.super Ljava/lang/Object;
.source "GalleryWithSwipingFix.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix$1;->a:Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix$1;->a:Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;->a(Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix$1;->a:Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;

    invoke-static {v0}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;->a(Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;)V

    .line 96
    return-void
.end method
