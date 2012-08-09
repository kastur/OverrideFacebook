.class Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;
.super Ljava/lang/Object;
.source "PhotoSetActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoSetActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0, p3}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 288
    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const v2, 0x7f0b02b7

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 293
    const/16 v1, 0xa

    const v2, 0x7f0b02b9

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 296
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->g(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 297
    const/16 v0, 0xc

    const v1, 0x7f0b02ae

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method
