.class Lcom/facebook/orca/compose/ComposeFragment$1;
.super Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;
.source "ComposeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$1;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$1;->a:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$1;->a:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment$1;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v2}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$string;->image_attachment_failed_network:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 190
    return-void
.end method

.method public final a(Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$1;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$1;->a:Lcom/facebook/orca/compose/ComposeFragment;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$1;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/compose/ComposeFragment;)V

    .line 199
    return-void
.end method
