.class final Lcom/facebook/katana/view/FacebookPostView$3;
.super Landroid/text/style/ClickableSpan;
.source "FacebookPostView.java"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/facebook/katana/model/FacebookProfile;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/facebook/katana/view/FacebookPostView$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/view/FacebookPostView$3;->b:Lcom/facebook/katana/model/FacebookProfile;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/facebook/katana/view/FacebookPostView$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/view/FacebookPostView$3;->b:Lcom/facebook/katana/model/FacebookProfile;

    iget v1, v1, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    iget-object v2, p0, Lcom/facebook/katana/view/FacebookPostView$3;->b:Lcom/facebook/katana/model/FacebookProfile;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-object v4, p0, Lcom/facebook/katana/view/FacebookPostView$3;->b:Lcom/facebook/katana/model/FacebookProfile;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;IJLcom/facebook/katana/model/FacebookProfile;)V

    .line 670
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    return-void
.end method
