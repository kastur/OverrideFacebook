.class public Lcom/facebook/orca/share/ShareView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ShareView.java"


# instance fields
.field private a:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private b:Lcom/facebook/orca/share/ShareRenderingLogic;

.field private c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private d:Lcom/facebook/orca/images/UrlImage;

.field private e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lcom/facebook/orca/images/UrlImageProcessor;

.field private k:Lcom/facebook/orca/share/Share;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/orca/share/ShareView;->a(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/orca/share/ShareView;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/share/ShareView;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 76
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->a:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 77
    const-class v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 78
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 80
    sget v0, Lcom/facebook/orca/R$layout;->orca_share_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->a(I)V

    .line 81
    sget v0, Lcom/facebook/orca/R$id;->share_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->a:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-static {p1}, Lcom/facebook/orca/share/ShareView;->b(Landroid/content/Context;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->j:Lcom/facebook/orca/images/UrlImageProcessor;

    .line 84
    sget v0, Lcom/facebook/orca/R$id;->share_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    .line 85
    sget v0, Lcom/facebook/orca/R$id;->share_caption:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->f:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/facebook/orca/R$id;->share_description:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->g:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/facebook/orca/R$id;->share_property1:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    sget v1, Lcom/facebook/orca/R$id;->share_property2:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    sget v2, Lcom/facebook/orca/R$id;->share_property3:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->h:Ljava/util/List;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$drawable;->orca_share_attachment_link_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareView;->i:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    new-instance v1, Lcom/facebook/orca/share/ShareView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/share/ShareView$1;-><init>(Lcom/facebook/orca/share/ShareView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    new-instance v1, Lcom/facebook/orca/share/ShareView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/share/ShareView$2;-><init>(Lcom/facebook/orca/share/ShareView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->setWillNotDraw(Z)V

    .line 108
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/share/ShareView;->l:I

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/share/ShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/share/ShareView;->e()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const v4, 0x3f19999a

    .line 248
    const/16 v0, 0x32

    invoke-static {p0, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 249
    new-instance v1, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v2, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/share/ShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/share/ShareView;->d()V

    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setVisibility(I)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-static {v0}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/share/Share;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 144
    const-string v1, "photo"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    sget v2, Lcom/facebook/orca/R$drawable;->orca_image_attachment_background:I

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/UrlImage;->setBackgroundResource(I)V

    .line 149
    :goto_3
    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v1, v8}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 150
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    iget-object v2, p0, Lcom/facebook/orca/share/ShareView;->j:Lcom/facebook/orca/images/UrlImageProcessor;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 160
    :goto_4
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 163
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareProperty;

    .line 165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<font color=\"#888888\">"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareProperty;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    sget v6, Lcom/facebook/orca/R$string;->share_property:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareProperty;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    invoke-virtual {v0, v8}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v1}, Lcom/facebook/orca/share/Share;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v1}, Lcom/facebook/orca/share/Share;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v1}, Lcom/facebook/orca/share/Share;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/UrlImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    goto/16 :goto_4

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->d:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    goto/16 :goto_4

    .line 175
    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 179
    :cond_7
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    invoke-static {v1}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/share/Share;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v1

    .line 192
    const-string v2, "link"

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string v2, "photo"

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/facebook/orca/share/ShareView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v1

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v3, "imageData"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :cond_2
    const-string v2, "video"

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->f()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMediaVideo;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMediaVideo;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    const-string v3, "http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 210
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 211
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v3, "video/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private f()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 236
    iget-object v2, p0, Lcom/facebook/orca/share/ShareView;->e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 237
    invoke-virtual {p0, v1}, Lcom/facebook/orca/share/ShareView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 239
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 240
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/facebook/orca/share/ShareView;->l:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 241
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/facebook/orca/share/ShareView;->l:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 242
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/facebook/orca/share/ShareView;->l:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 243
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/facebook/orca/share/ShareView;->l:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 244
    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/facebook/orca/share/ShareView;->f()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/share/ShareView;->invalidate(Landroid/graphics/Rect;)V

    .line 220
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-direct {p0}, Lcom/facebook/orca/share/ShareView;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->i:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/facebook/orca/share/ShareView;->e:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    invoke-virtual {v2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 229
    iget-object v1, p0, Lcom/facebook/orca/share/ShareView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 231
    return-void
.end method

.method public setShare(Lcom/facebook/orca/share/Share;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/orca/share/ShareView;->k:Lcom/facebook/orca/share/Share;

    .line 117
    invoke-direct {p0}, Lcom/facebook/orca/share/ShareView;->c()V

    .line 118
    return-void
.end method
