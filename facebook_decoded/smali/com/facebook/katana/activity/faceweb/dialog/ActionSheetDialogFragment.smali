.class public Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;
.super Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;
.source "ActionSheetDialogFragment.java"


# instance fields
.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/faceweb/ActionSheetButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;

    invoke-direct {v0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;-><init>()V

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v2, "action_sheet_buttons"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "action_sheet_hide_cancel"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 112
    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->e(Landroid/os/Bundle;)V

    .line 113
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .locals 6

    .prologue
    const v5, 0x7f0b01e0

    .line 33
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action_sheet_buttons"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v0, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    .line 38
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    .line 40
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 41
    const-class v2, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;

    invoke-static {v0, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0269

    new-instance v2, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$1;-><init>(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 103
    :goto_1
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v2, "JSON"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse JSON:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    const-string v1, "JSON"

    const-string v2, "IOError in JSON parser"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    :catch_2
    move-exception v0

    .line 48
    const-string v2, "JSON"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JMParser could not parse JSON:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->J:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;->title:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 69
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;-><init>(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "action_sheet_hide_cancel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 94
    const v1, 0x7f0b01b0

    new-instance v2, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$3;-><init>(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1
.end method
