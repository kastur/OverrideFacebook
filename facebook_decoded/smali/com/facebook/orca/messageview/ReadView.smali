.class public Lcom/facebook/orca/messageview/ReadView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ReadView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/messageview/ReadView;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/messageview/ReadView;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/messageview/ReadView;->a()V

    .line 34
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/facebook/orca/R$layout;->orca_message_read_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/ReadView;->a(I)V

    .line 38
    sget v0, Lcom/facebook/orca/R$id;->receipt_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/ReadView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/ReadView;->b:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/facebook/orca/R$id;->receipt_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/ReadView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/ReadView;->a:Landroid/widget/TextView;

    .line 40
    return-void
.end method


# virtual methods
.method public setShowReadReceiptIcon(Z)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v1, p0, Lcom/facebook/orca/messageview/ReadView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/messageview/ReadView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
