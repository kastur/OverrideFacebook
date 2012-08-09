.class Lcom/facebook/katana/ComposerActivity$13;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->m(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/TimeAdapter;->e()I

    move-result v0

    .line 995
    add-int/lit8 v1, p3, -0x1

    .line 997
    if-eq v0, v1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->m(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/features/composer/TimeAdapter;->d(I)V

    .line 999
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v1}, Lcom/facebook/katana/ComposerActivity;->m(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter;->f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->getTimestamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/ComposerActivity;->b(Lcom/facebook/katana/ComposerActivity;J)J

    .line 1000
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->g()V

    .line 1001
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/ComposerActivity;->b(Lcom/facebook/katana/ComposerActivity;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->m(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/TimeAdapter;->i()V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$13;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->n(Lcom/facebook/katana/ComposerActivity;)V

    .line 1006
    return-void
.end method
