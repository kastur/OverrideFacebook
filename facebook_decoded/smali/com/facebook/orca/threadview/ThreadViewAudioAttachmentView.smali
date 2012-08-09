.class public Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadViewAudioAttachmentView.java"


# instance fields
.field private a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 57
    sget v0, Lcom/facebook/orca/R$id;->play_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-static {v2, v3}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x23

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 51
    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 52
    sget v0, Lcom/facebook/orca/R$layout;->orca_audio_message_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(I)V

    .line 53
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a()V

    .line 54
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-direct {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;->c()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c:Landroid/net/Uri;

    .line 96
    return-void
.end method


# virtual methods
.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b:Lcom/google/common/collect/ImmutableList;

    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c()V

    .line 82
    return-void
.end method
