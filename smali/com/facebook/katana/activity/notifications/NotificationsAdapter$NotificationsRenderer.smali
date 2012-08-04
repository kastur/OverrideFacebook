.class public Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private final c:Landroid/text/style/TextAppearanceSpan;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->d:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const/high16 v2, 0x4160

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v3, v2

    .line 79
    const v2, 0x7f09002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 80
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->c:Landroid/text/style/TextAppearanceSpan;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 180
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->c:Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 182
    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    .line 158
    if-eqz p2, :cond_1

    .line 159
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v2, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    :goto_0
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 169
    :goto_1
    return-void

    .line 166
    :cond_0
    const v0, 0x7f020259

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;-><init>(B)V

    .line 90
    const v0, 0x7f080170

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->a:Lcom/facebook/orca/images/UrlImage;

    .line 91
    const v0, 0x7f080172

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->b:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f080171

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->d:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f080173

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->c:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->d:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v2, v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v1
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/picture?type=large"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-object v2, v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->a:Lcom/facebook/orca/images/UrlImage;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 124
    iget-object v1, v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->b:Landroid/widget/ImageView;

    const v2, 0x7f020259

    invoke-direct {p0, v1, p6, v2}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 127
    iget-object v1, v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->d:Landroid/widget/TextView;

    .line 128
    if-eqz p8, :cond_1

    .line 129
    invoke-direct {p0, p8, p7}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a:Landroid/content/Context;

    sget-object v2, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p9

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v0, v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .line 110
    :cond_0
    const v0, 0x7f02026a

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    return-void
.end method
