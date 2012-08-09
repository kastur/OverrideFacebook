.class public Lcom/facebook/katana/dialog/AddShortcutActivity;
.super Lcom/facebook/katana/dialog/BlackDialogActivity;
.source "AddShortcutActivity.java"


# static fields
.field private static final e:Landroid/content/Intent;


# instance fields
.field private f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field private g:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.facebook.orca"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity;->e:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/dialog/BlackDialogActivity;-><init>()V

    .line 224
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    .line 205
    new-instance v0, Lcom/facebook/katana/util/logging/ActionEvent;

    const-string v1, "action"

    const-string v3, "dialog"

    const-class v2, Lcom/facebook/katana/dialog/AddShortcutActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-wide v7, v5

    move-object v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/util/logging/ActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Landroid/graphics/Point;)V

    .line 211
    iget-object v1, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-virtual {v1}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/ActionEvent;->a(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 213
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 201
    invoke-static {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->a(Landroid/content/Context;)Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    invoke-static {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->a(Landroid/content/Context;)Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->e(Landroid/content/Context;)V

    .line 222
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 216
    invoke-static {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->a(Landroid/content/Context;)Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->d(Landroid/content/Context;)V

    .line 217
    const-string v0, "OPEN_ACTIVITY"

    invoke-direct {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->a(Ljava/lang/String;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f030008

    const v5, 0x7f020097

    const v4, 0x7f0b01b0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "rollout"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->finish()V

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "rollout"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->valueOf(Ljava/lang/String;)Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    sget-object v2, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->MESSENGER_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    iput-object v2, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->g:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    .line 74
    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$2;->a:[I

    iget-object v3, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-virtual {v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 107
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->finish()V

    move v7, v1

    move v1, v0

    move v0, v7

    .line 111
    :goto_1
    :pswitch_0
    new-instance v2, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    invoke-direct {v2}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->b(Ljava/lang/Integer;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v2

    .line 114
    if-eqz v1, :cond_3

    .line 115
    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0, v4}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->c(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    const v1, 0x7f0b0339

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    .line 121
    :goto_2
    const v0, 0x7f0b0338

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->b(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    const v1, 0x7f030009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/Integer;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    .line 134
    :goto_3
    invoke-virtual {p0, v2}, Lcom/facebook/katana/dialog/AddShortcutActivity;->a(Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;)V

    .line 135
    :goto_4
    return-void

    .line 66
    :catch_0
    move-exception v2

    const-string v2, "shortcut"

    const-string v3, "not a valid enum value"

    invoke-static {v2, v3}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->finish()V

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity;->e:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->finish()V

    .line 81
    :cond_1
    new-instance v0, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    invoke-direct {v0}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->b(Ljava/lang/Integer;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    const v1, 0x7f0b033c

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->b(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->c(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    const v1, 0x7f0b033a

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/Integer;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->a(Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;)V

    goto :goto_4

    :pswitch_2
    move v1, v0

    .line 90
    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    .line 93
    goto/16 :goto_1

    :pswitch_4
    move v7, v1

    move v1, v0

    move v0, v7

    .line 100
    goto/16 :goto_1

    .line 104
    :pswitch_5
    sget-object v2, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->CAMERA_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    iput-object v2, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->g:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    move v7, v1

    move v1, v0

    move v0, v7

    .line 105
    goto/16 :goto_1

    .line 119
    :cond_2
    const v0, 0x7f0b0338

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    goto/16 :goto_2

    .line 124
    :cond_3
    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0, v4}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->c(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    const v1, 0x7f0b0334

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    .line 130
    :goto_5
    const v0, 0x7f0b0336

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->b(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/Integer;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    goto/16 :goto_3

    .line 128
    :cond_4
    const v0, 0x7f0b0335

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a(Ljava/lang/String;)Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;

    goto :goto_5

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected final f()V
    .locals 5

    .prologue
    const v4, 0x7f020252

    .line 139
    invoke-direct {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->i()V

    .line 140
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$2;->a:[I

    iget-object v3, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-virtual {v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    const v1, 0x7f0b033b

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    const v1, 0x7f0b0332

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :pswitch_2
    const v1, 0x7f0b0337

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :pswitch_3
    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    const v1, 0x7f0b0333

    invoke-virtual {p0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final g()V
    .locals 4

    .prologue
    .line 170
    const-string v0, "CLICK"

    invoke-direct {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_BOTH:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_BOTH_NO_CANCEL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    if-ne v0, v1, :cond_1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->CAMERA_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ShortcutInstaller;->a(Landroid/content/Context;Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/katana/dialog/AddShortcutActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$1;-><init>(Lcom/facebook/katana/dialog/AddShortcutActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :goto_0
    invoke-static {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->a(Landroid/content/Context;)Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->c(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->finish()V

    .line 197
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->MS_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->f:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    if-ne v0, v1, :cond_3

    .line 188
    :cond_2
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity;->e:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/dialog/AddShortcutActivity;->g:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ShortcutInstaller;->a(Landroid/content/Context;Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
