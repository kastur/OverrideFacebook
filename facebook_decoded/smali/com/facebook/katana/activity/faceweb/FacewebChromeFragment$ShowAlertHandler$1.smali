.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler$1;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler$1;->b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler;

    iput-object p2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2077
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2078
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler$1;->b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Ljava/lang/String;)V

    .line 2081
    :cond_0
    return-void
.end method
