.class public Lcom/facebook/orca/notify/InAppNotificationView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "InAppNotificationView.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Lcom/facebook/orca/threads/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "\\n+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/notify/InAppNotificationView;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationView;->c()V

    .line 34
    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    const-string v0, ""

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    sget-object v1, Lcom/facebook/orca/notify/InAppNotificationView;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/facebook/orca/R$layout;->orca_in_app_notification:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->a(I)V

    .line 39
    sget v0, Lcom/facebook/orca/R$id;->notification_user_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 40
    sget v0, Lcom/facebook/orca/R$id;->notification_title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->c:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/facebook/orca/R$id;->notification_snippet:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->d:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/facebook/orca/R$id;->notification_dismiss_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->e:Landroid/widget/ImageButton;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->f:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->f:Lcom/facebook/orca/threads/Message;

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/facebook/orca/notify/InAppNotificationView;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUser(Lcom/facebook/orca/users/User;)V

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
