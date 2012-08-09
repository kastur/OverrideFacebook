.class Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;
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
    .line 2172
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2173
    iput-object p2, p0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->a:Landroid/net/Uri;

    .line 2174
    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 2179
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2180
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v0, v3}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2185
    :goto_0
    return-object v0

    .line 2181
    :catch_0
    move-exception v0

    .line 2182
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/ComposerActivity;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error thumbnailing photo in composer"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2185
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->b:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Landroid/graphics/Bitmap;)V

    .line 2192
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2169
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 2169
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
