.class Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "NotificationsFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/fragment/NotificationsFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/fragment/NotificationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/fragment/NotificationsFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;-><init>(Lcom/facebook/katana/fragment/NotificationsFragment;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->b(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->a:Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->b(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->a:Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->a(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->c(Lcom/facebook/katana/fragment/NotificationsFragment;)V

    .line 182
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->d(Lcom/facebook/katana/fragment/NotificationsFragment;)V

    .line 183
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    const v2, 0x7f0b0266

    invoke-virtual {v1, v2}, Lcom/facebook/katana/fragment/NotificationsFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v2}, Lcom/facebook/katana/fragment/NotificationsFragment;->b(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/fragment/NotificationsFragment;->a(Landroid/content/Context;Lcom/facebook/katana/activity/notifications/NotificationsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/fragment/NotificationsFragment;->d(I)V

    goto :goto_0
.end method
