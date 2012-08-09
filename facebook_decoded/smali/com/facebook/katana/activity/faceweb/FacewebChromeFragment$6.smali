.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$6;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BaseFacebookActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Lcom/facebook/katana/activity/BaseFacebookActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 649
    iput-object p2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$6;->a:Lcom/facebook/katana/activity/BaseFacebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 652
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$6;->a:Lcom/facebook/katana/activity/BaseFacebookActivity;

    const-string v1, "extra_composer_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/BaseFacebookActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 654
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    return-void
.end method
