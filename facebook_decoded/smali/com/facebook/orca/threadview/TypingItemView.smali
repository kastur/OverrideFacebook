.class public Lcom/facebook/orca/threadview/TypingItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "TypingItemView.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/threadview/TypingItemView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/threadview/TypingItemView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/threadview/TypingItemView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/facebook/orca/R$layout;->orca_typing_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/TypingItemView;->a(I)V

    .line 40
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/TypingItemView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 41
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->a:Lcom/facebook/orca/cache/DataCache;

    .line 43
    sget v0, Lcom/facebook/orca/R$id;->typing_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/TypingItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->b:Landroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method public setTypingItem(Lcom/facebook/orca/threadview/RowTypingItem;)V
    .locals 6
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowTypingItem;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/TypingItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iget-object v2, p0, Lcom/facebook/orca/threadview/TypingItemView;->b:Landroid/widget/TextView;

    sget v3, Lcom/facebook/orca/R$string;->presence_typing_alt2:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->b:Landroid/widget/TextView;

    sget v2, Lcom/facebook/orca/R$string;->presence_typing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
