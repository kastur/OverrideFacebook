.class final Lcom/facebook/katana/view/FacebookPostView$2;
.super Landroid/text/style/ClickableSpan;
.source "FacebookPostView.java"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/facebook/katana/view/FacebookPostView$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/view/FacebookPostView$2;->b:Ljava/util/Set;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/view/FacebookPostView$2;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/katana/activity/profilelist/TaggedUsersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/katana/view/FacebookPostView$2;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 622
    const-string v2, "profiles"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 624
    iget-object v1, p0, Lcom/facebook/katana/view/FacebookPostView$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 625
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    return-void
.end method
