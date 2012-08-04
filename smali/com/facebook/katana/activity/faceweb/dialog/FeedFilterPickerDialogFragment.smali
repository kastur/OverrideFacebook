.class public Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;
.super Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;
.source "FeedFilterPickerDialogFragment.java"


# instance fields
.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/NewsFeedToggleOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;

    invoke-direct {v0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;-><init>()V

    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 105
    const-string v2, "feed_filter_buttons"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "feed_filter_dismiss_script"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "feed_filter_selected_index"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->e(Landroid/os/Bundle;)V

    .line 109
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .locals 6

    .prologue
    const v5, 0x7f0b01e0

    .line 35
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "feed_filter_dismiss_script"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "feed_filter_selected_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "feed_filter_buttons"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v1}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    .line 42
    invoke-virtual {v1, v0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 43
    const-class v1, Lcom/facebook/katana/model/NewsFeedToggleOption;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0269

    new-instance v2, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$1;-><init>(Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 97
    :goto_1
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "received bad faceweb data"

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    const-string v1, "received bad faceweb data"

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    const-string v1, "received bad faceweb data"

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/CharSequence;

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/NewsFeedToggleOption;

    iget-object v0, v0, Lcom/facebook/katana/model/NewsFeedToggleOption;->title:Ljava/lang/String;

    aput-object v0, v5, v1

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 70
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;

    invoke-direct {v1, p0, v4, v3}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;-><init>(Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;ILjava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1
.end method
