.class public Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadViewNotificationItemRow.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 36
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view_notifications_item_row:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->a(I)V

    .line 37
    sget v0, Lcom/facebook/orca/R$id;->item_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->a:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/facebook/orca/R$id;->item_checkbox:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->b:Landroid/widget/CheckBox;

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 44
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
