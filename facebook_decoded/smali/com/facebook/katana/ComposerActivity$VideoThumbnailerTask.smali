.class Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;
.super Landroid/os/AsyncTask;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private synthetic b:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/ComposerActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2199
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2200
    iput-object p2, p0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->a:Landroid/net/Uri;

    .line 2201
    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/ComposerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/net/Uri;Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 2213
    if-nez p1, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Landroid/graphics/Bitmap;)V

    .line 2218
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2195
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 2195
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
