.class Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;
.super Ljava/lang/Object;
.source "RefreshableFacewebWebViewContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 197
    return-void

    .line 182
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v1, "RefreshableFacewebWebViewContainer"

    const-string v2, "copy link failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b044d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
