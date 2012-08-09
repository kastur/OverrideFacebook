.class Lcom/facebook/katana/ui/TaggableView$2;
.super Ljava/lang/Object;
.source "TaggableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/TagSuggestionView;

.field private synthetic b:Lcom/facebook/katana/ui/TaggableView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/TaggableView;Lcom/facebook/katana/ui/TagSuggestionView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggableView$2;->b:Lcom/facebook/katana/ui/TaggableView;

    iput-object p2, p0, Lcom/facebook/katana/ui/TaggableView$2;->a:Lcom/facebook/katana/ui/TagSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView$2;->b:Lcom/facebook/katana/ui/TaggableView;

    iget-object v1, p0, Lcom/facebook/katana/ui/TaggableView$2;->a:Lcom/facebook/katana/ui/TagSuggestionView;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TaggableView;->a(Lcom/facebook/katana/ui/TagSuggestionView;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView$2;->b:Lcom/facebook/katana/ui/TaggableView;

    invoke-static {v0}, Lcom/facebook/katana/ui/TaggableView;->a(Lcom/facebook/katana/ui/TaggableView;)Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/ui/TaggableView$2;->a:Lcom/facebook/katana/ui/TagSuggestionView;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/TagSuggestionView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/katana/ui/TaggableView$2;->a:Lcom/facebook/katana/ui/TagSuggestionView;

    invoke-virtual {v2}, Lcom/facebook/katana/ui/TagSuggestionView;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;->a(FF)V

    .line 153
    return-void
.end method
