.class public Lcom/facebook/orca/threadview/MessageItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "MessageItemView.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

.field private c:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private d:Lcom/facebook/orca/share/ShareRenderingLogic;

.field private e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private f:Lcom/facebook/orca/threads/ThreadSourceUtil;

.field private g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/TextView;

.field private j:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private n:Lcom/facebook/orca/share/ShareView;

.field private o:Landroid/view/ViewStub;

.field private p:Landroid/view/ViewStub;

.field private q:Landroid/view/ViewStub;

.field private r:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

.field private s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

.field private t:Landroid/widget/ImageButton;

.field private u:Lcom/facebook/orca/threadview/ReceiptItemView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Lcom/facebook/orca/threadview/RowMessageItem;

.field private y:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->c()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->c()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->c()V

    .line 90
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)I
    .locals 1
    .parameter

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget v0, Lcom/facebook/orca/R$drawable;->orca_location_pin:I

    .line 268
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->f:Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Lcom/facebook/orca/threads/Message;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/MessageItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->e()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 94
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    .line 95
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 96
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 97
    const-class v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->d:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 98
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 99
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsAudioMessageEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Ljavax/inject/Provider;

    .line 101
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Ljavax/inject/Provider;

    .line 103
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->f:Lcom/facebook/orca/threads/ThreadSourceUtil;

    .line 105
    sget v0, Lcom/facebook/orca/R$layout;->orca_message_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)V

    .line 106
    sget v0, Lcom/facebook/orca/R$id;->message_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    .line 107
    sget v0, Lcom/facebook/orca/R$id;->message_user:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/facebook/orca/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    .line 109
    sget v0, Lcom/facebook/orca/R$id;->message_time:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/facebook/orca/R$id;->message_has_attachments_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/facebook/orca/R$id;->message_user_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 112
    sget v0, Lcom/facebook/orca/R$id;->message_source_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/facebook/orca/R$id;->message_share_stub:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    .line 114
    sget v0, Lcom/facebook/orca/R$id;->message_images_stub:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    .line 115
    sget v0, Lcom/facebook/orca/R$id;->message_audio_stub:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Landroid/view/ViewStub;

    .line 116
    sget v0, Lcom/facebook/orca/R$id;->message_audio:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    .line 117
    sget v0, Lcom/facebook/orca/R$id;->message_failed_retry_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a(Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;)V

    .line 119
    sget v0, Lcom/facebook/orca/R$id;->row_receipt_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ReceiptItemView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    .line 120
    sget v0, Lcom/facebook/orca/R$id;->message_location_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->w:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/threadview/MessageItemView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/MessageItemView$1;-><init>(Lcom/facebook/orca/threadview/MessageItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/16 v6, 0x385

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    .line 146
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 148
    const/16 v3, 0xf

    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 149
    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->a()V

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Landroid/widget/ImageView;

    :cond_0
    move-object v3, v0

    move v0, v2

    .line 156
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Lcom/facebook/orca/photos/tiles/UserTileView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    .line 185
    iput-object v5, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Landroid/view/ViewStub;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 201
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->d:Lcom/facebook/orca/share/ShareRenderingLogic;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-static {v0}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_e

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    .line 205
    iput-object v5, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/share/ShareView;->setShare(Lcom/facebook/orca/share/Share;)V

    .line 216
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    .line 219
    iput-object v5, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 229
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    if-ne v0, v6, :cond_10

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    :goto_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    if-nez v0, :cond_11

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ReceiptItemView;->setVisibility(I)V

    .line 241
    :goto_6
    return-void

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-static {v3}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->e(Lcom/facebook/orca/threads/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move v0, v1

    goto/16 :goto_0

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(Lcom/facebook/orca/threads/Message;)I

    move-result v3

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    const/16 v4, 0x384

    if-ne v0, v4, :cond_a

    const/4 v0, 0x1

    .line 170
    :goto_7
    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    if-nez v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 169
    goto :goto_7

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 190
    :cond_c
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setVisibility(I)V

    goto/16 :goto_2

    .line 195
    :cond_d
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setVisibility(I)V

    goto/16 :goto_2

    .line 210
    :cond_e
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    goto/16 :goto_3

    .line 224
    :cond_f
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    goto/16 :goto_4

    .line 232
    :cond_10
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 238
    :cond_11
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ReceiptItemView;->setRowReceiptItem(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ReceiptItemView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private e()V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/mutators/ResendMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    const-string v1, "message"

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    const/16 v3, 0x385

    if-ne v0, v3, :cond_0

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v4, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 259
    :goto_2
    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v4, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 257
    goto :goto_2

    :cond_3
    move v0, v2

    .line 259
    goto :goto_3
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 276
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
    .end annotation

    .prologue
    .line 281
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/activity/CustomViewGroup;->onLayout(ZIIII)V

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    const/16 v1, 0x385

    if-ne v0, v1, :cond_0

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-static {v1, p0, v0}, Lcom/facebook/orca/common/util/RectUtil;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 285
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 286
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 287
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 288
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 289
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 290
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 291
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setRowMessageItem(Lcom/facebook/orca/threadview/RowMessageItem;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Lcom/facebook/orca/threadview/RowMessageItem;

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threads/Message;

    .line 138
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->d()V

    .line 139
    return-void
.end method
