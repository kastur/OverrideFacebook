.class public Lcom/facebook/orca/threadview/MessageListAdapter;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/animatablelistview/ItemBasedListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/common/ui/widgets/animatablelistview/ItemBasedListAdapter",
        "<",
        "Lcom/facebook/orca/threadview/RowItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/orca/threadview/RowItem;

.field public static final b:Lcom/facebook/orca/threadview/RowItem;

.field public static final c:Lcom/facebook/orca/threadview/RowItem;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/threadview/SimpleRowItem;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/SimpleRowItem;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    .line 38
    new-instance v0, Lcom/facebook/orca/threadview/SimpleRowItem;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/SimpleRowItem;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    .line 40
    new-instance v0, Lcom/facebook/orca/threadview/SimpleRowItem;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/SimpleRowItem;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 183
    .line 184
    if-nez p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_load_more_placeholder_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 187
    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p2, Lcom/facebook/orca/threadview/ReceiptItemView;

    .line 146
    if-nez p2, :cond_0

    .line 147
    new-instance p2, Lcom/facebook/orca/threadview/ReceiptItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/ReceiptItemView;-><init>(Landroid/content/Context;)V

    .line 149
    :cond_0
    check-cast p1, Lcom/facebook/orca/threadview/RowReceiptItem;

    invoke-virtual {p2, p1}, Lcom/facebook/orca/threadview/ReceiptItemView;->setRowReceiptItem(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    .line 150
    return-object p2
.end method

.method private a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown object type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 122
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->c(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->d(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/facebook/orca/threadview/RowItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    instance-of v2, p0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v2, :cond_2

    .line 82
    check-cast p0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 87
    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/threadview/RowItem;)J
    .locals 2
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-ne p0, v0, :cond_0

    .line 95
    const-wide/16 v0, 0x2

    .line 105
    :goto_0
    return-wide v0

    .line 96
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-ne p0, v0, :cond_1

    .line 97
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    if-ne p0, v0, :cond_2

    .line 99
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 100
    :cond_2
    instance-of v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v0, :cond_3

    .line 101
    check-cast p0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 103
    :cond_3
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 191
    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_load_more_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 195
    :cond_0
    return-object p1
.end method

.method private b(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    check-cast p1, Lcom/facebook/orca/threadview/RowTypingItem;

    .line 155
    check-cast p2, Lcom/facebook/orca/threadview/TypingItemView;

    .line 156
    if-nez p2, :cond_0

    .line 157
    new-instance p2, Lcom/facebook/orca/threadview/TypingItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/TypingItemView;-><init>(Landroid/content/Context;)V

    .line 159
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/orca/threadview/TypingItemView;->setTypingItem(Lcom/facebook/orca/threadview/RowTypingItem;)V

    .line 160
    return-object p2
.end method

.method private static c(Lcom/facebook/orca/threadview/RowItem;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    return v0
.end method

.method private c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 199
    .line 200
    if-nez p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_loading_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 203
    :cond_0
    return-object p1
.end method

.method private c(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    check-cast p2, Lcom/facebook/orca/threadview/MessageItemView;

    .line 165
    if-nez p2, :cond_0

    .line 166
    new-instance p2, Lcom/facebook/orca/threadview/MessageItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 168
    :cond_0
    check-cast p1, Lcom/facebook/orca/threadview/RowMessageItem;

    .line 169
    invoke-virtual {p2, p1}, Lcom/facebook/orca/threadview/MessageItemView;->setRowMessageItem(Lcom/facebook/orca/threadview/RowMessageItem;)V

    .line 170
    return-object p2
.end method

.method private d(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    check-cast p2, Lcom/facebook/orca/threadview/AdminMessageItemView;

    .line 175
    if-nez p2, :cond_0

    .line 176
    new-instance p2, Lcom/facebook/orca/threadview/AdminMessageItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;-><init>(Landroid/content/Context;)V

    .line 178
    :cond_0
    check-cast p1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 179
    return-object p2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xe

    return v0
.end method

.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-static {p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->c(Lcom/facebook/orca/threadview/RowItem;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)J
    .locals 2
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-static {p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Lcom/facebook/orca/threadview/RowItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-static {p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/RowItem;)Z

    move-result v0

    return v0
.end method
