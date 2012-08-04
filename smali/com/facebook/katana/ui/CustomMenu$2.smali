.class Lcom/facebook/katana/ui/CustomMenu$2;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/CustomMenuItem;

.field private synthetic b:Lcom/facebook/katana/ui/CustomMenu;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/CustomMenu;Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/facebook/katana/ui/CustomMenu$2;->b:Lcom/facebook/katana/ui/CustomMenu;

    iput-object p2, p0, Lcom/facebook/katana/ui/CustomMenu$2;->a:Lcom/facebook/katana/ui/CustomMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu$2;->b:Lcom/facebook/katana/ui/CustomMenu;

    iget-object v1, p0, Lcom/facebook/katana/ui/CustomMenu$2;->a:Lcom/facebook/katana/ui/CustomMenuItem;

    invoke-static {v0, v1}, Lcom/facebook/katana/ui/CustomMenu;->a(Lcom/facebook/katana/ui/CustomMenu;Lcom/facebook/katana/ui/CustomMenuItem;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu$2;->b:Lcom/facebook/katana/ui/CustomMenu;

    invoke-static {v0}, Lcom/facebook/katana/ui/CustomMenu;->a(Lcom/facebook/katana/ui/CustomMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;

    .line 232
    iget-object v2, p0, Lcom/facebook/katana/ui/CustomMenu$2;->a:Lcom/facebook/katana/ui/CustomMenuItem;

    invoke-interface {v0, v2}, Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;->a(Lcom/facebook/katana/ui/CustomMenuItem;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu$2;->b:Lcom/facebook/katana/ui/CustomMenu;

    invoke-static {v0}, Lcom/facebook/katana/ui/CustomMenu;->b(Lcom/facebook/katana/ui/CustomMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;

    .line 235
    iget-object v2, p0, Lcom/facebook/katana/ui/CustomMenu$2;->a:Lcom/facebook/katana/ui/CustomMenuItem;

    invoke-virtual {v2}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;->b_(I)V

    goto :goto_1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu$2;->a:Lcom/facebook/katana/ui/CustomMenuItem;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomMenu$2;->b:Lcom/facebook/katana/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomMenu;->c()V

    .line 240
    :cond_2
    return-void
.end method
