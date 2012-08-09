.class public Lcom/facebook/orca/threadview/ReceiptItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ReceiptItemView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/facebook/orca/threads/ThreadSourceUtil;

.field private d:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/orca/common/async/Deferred;

.field private g:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ReceiptItemView;->a()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ReceiptItemView;->a()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ReceiptItemView;->a()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ReceiptItemView;)Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->g:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 59
    sget v0, Lcom/facebook/orca/R$layout;->orca_receipt_message_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ReceiptItemView;->a(I)V

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ReceiptItemView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 62
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->c:Lcom/facebook/orca/threads/ThreadSourceUtil;

    .line 63
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 65
    const-class v0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->e:Ljavax/inject/Provider;

    .line 67
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->g:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 69
    sget v0, Lcom/facebook/orca/R$id;->receipt_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ReceiptItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/facebook/orca/R$id;->receipt_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ReceiptItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    .line 71
    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/RowReceiptItem;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->c:Lcom/facebook/orca/threads/ThreadSourceUtil;

    const-string v3, "chat"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/ThreadSourceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->setData(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->c:Lcom/facebook/orca/threads/ThreadSourceUtil;

    const-string v1, "chat"

    invoke-static {v1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->f()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    .line 110
    if-nez v1, :cond_1

    .line 135
    :goto_1
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->c:Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/ThreadSourceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->setData(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->c:Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->f:Lcom/facebook/orca/common/async/Deferred;

    .line 115
    iget-object v2, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->f:Lcom/facebook/orca/common/async/Deferred;

    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/Deferrable;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->f:Lcom/facebook/orca/common/async/Deferred;

    new-instance v2, Lcom/facebook/orca/threadview/ReceiptItemView$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/threadview/ReceiptItemView$1;-><init>(Lcom/facebook/orca/threadview/ReceiptItemView;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->f:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ReceiptItemView;)Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    return-object v0
.end method

.method private b(Lcom/facebook/orca/threadview/RowReceiptItem;)V
    .locals 7
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_receipt_checkmark_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->e()J

    move-result-wide v1

    .line 140
    const-string v0, ""

    .line 141
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadDateUtil;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    new-instance v2, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ReceiptItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/facebook/orca/R$string;->message_seen_receipt:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->setData(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ReceiptItemView;)Lcom/facebook/orca/threads/ThreadSourceUtil;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->c:Lcom/facebook/orca/threads/ThreadSourceUtil;

    return-object v0
.end method

.method private c(Lcom/facebook/orca/threadview/RowReceiptItem;)V
    .locals 4
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ReceiptItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$string;->message_delivered_receipt:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->setData(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->c:Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/threadview/ReceiptItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d(Lcom/facebook/orca/threadview/RowReceiptItem;)V
    .locals 4
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->b:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_receipt_checkmark_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ReceiptItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$string;->message_seen_receipt_group_everyone:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->setData(Ljava/lang/Object;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->setData(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public setRowReceiptItem(Lcom/facebook/orca/threadview/RowReceiptItem;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->f:Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->f:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/Deferred;->a()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView;->f:Lcom/facebook/orca/common/async/Deferred;

    .line 78
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/ReceiptItemView$2;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ReceiptItemView;->a(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ReceiptItemView;->b(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ReceiptItemView;->c(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    goto :goto_0

    .line 91
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ReceiptItemView;->d(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
