.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 618
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->e()V

    .line 621
    :cond_0
    return-void
.end method
