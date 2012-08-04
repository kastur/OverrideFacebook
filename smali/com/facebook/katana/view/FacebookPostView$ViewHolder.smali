.class public Lcom/facebook/katana/view/FacebookPostView$ViewHolder;
.super Ljava/lang/Object;
.source "FacebookPostView.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:[Landroid/widget/LinearLayout;

.field public l:I

.field public m:J

.field private n:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-array v0, v1, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    .line 105
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->n:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->m:J

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    .line 156
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->n:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 131
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 4
    .parameter

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->m:J

    iget-wide v2, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v1, p0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aget-object v0, v1, v0

    invoke-static {p1, v0, p2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    .line 144
    const/4 v1, 0x1

    .line 147
    :cond_0
    return v1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
