.class Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads$1;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;)V
    .locals 0
    .parameter

    .prologue
    .line 2157
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads$1;->a:Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads$1;->a:Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    const v1, 0x7f0b03b1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 2161
    return-void
.end method
