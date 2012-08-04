.class public Lcom/facebook/katana/activity/login/RealLoginActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "RealLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# annotations
.annotation runtime Lcom/facebook/orca/annotations/AuthNotRequired;
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Lcom/facebook/katana/binding/AppSessionListener;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/facebook/katana/view/FacebookProgressCircleView;

.field private o:J

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Z

.field private final y:Landroid/os/Handler;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/login/RealLoginActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->m:Z

    .line 142
    iput v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->p:I

    .line 143
    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->q:Z

    .line 152
    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->t:Z

    .line 161
    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->x:Z

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->y:Landroid/os/Handler;

    .line 753
    new-instance v0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/login/RealLoginActivity$8;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->A:Ljava/lang/Runnable;

    .line 878
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/RealLoginActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->p:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/RealLoginActivity;Lcom/facebook/katana/binding/AppSession;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1036
    if-eqz p0, :cond_2

    .line 1038
    :goto_0
    const-string v1, "%s %s %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    const-string v0, "[%d]"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    :goto_2
    aput-object p2, v2, v7

    const/4 v3, 0x2

    if-eqz p3, :cond_5

    const-string v0, "[%s]"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1045
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1049
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1052
    :cond_1
    return-object p0

    .line 1036
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 1038
    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string p2, ""

    goto :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_3
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 189
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    instance-of v0, p0, Lcom/facebook/katana/activity/FacebookActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/facebook/katana/activity/FacebookActivity;

    invoke-interface {v0}, Lcom/facebook/katana/activity/FacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/facebook/katana/activity/login/RealLoginActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toLogin: skipping stale activity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 215
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/ApiLogging;->c(Landroid/content/Context;)V

    .line 218
    return-void

    .line 205
    :cond_0
    instance-of v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "intent_reuse_blacklist"

    const-string v2, "skipping blacklisted activity FbFragmentChromeActivity"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Lcom/facebook/katana/activity/login/RealLoginActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toLogin: preserving intent for activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1
    .parameter

    .prologue
    .line 419
    new-instance v0, Lcom/facebook/katana/activity/login/RealLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/login/RealLoginActivity$4;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 431
    return-void
.end method

.method private a(Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;)V
    .locals 3
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    const v0, 0x7f0b022e

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 704
    :goto_0
    return-void

    .line 689
    :cond_0
    sget-object v0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;->PASSWORD_ENTRY:Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;

    if-ne p1, v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    const v0, 0x7f0b0225

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 698
    const v0, 0x7f0b0231

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 703
    :cond_2
    const-string v2, "password"

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/RealLoginActivity;Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 708
    new-instance v0, Lcom/facebook/katana/binding/AppSession;

    invoke-direct {v0}, Lcom/facebook/katana/binding/AppSession;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 710
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 712
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->z:Ljava/lang/String;

    .line 717
    invoke-static {p0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 718
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 719
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 720
    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Z)V

    .line 722
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->n:Lcom/facebook/katana/view/FacebookProgressCircleView;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setVisibility(I)V

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->o:J

    .line 724
    iput v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->p:I

    .line 725
    iput-boolean v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->q:Z

    .line 726
    iput-boolean v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->r:Z

    .line 727
    iput-boolean v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->s:Z

    .line 728
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 729
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->t:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->t:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1129
    invoke-static {p1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    :goto_0
    return v3

    .line 1134
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1144
    :try_start_1
    const-string v0, "error_title"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    const-string v4, "error_message"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    .line 1154
    :goto_1
    :try_start_2
    const-string v0, "url"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1161
    :goto_2
    invoke-static {v4}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1162
    iput-object v4, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->i:Ljava/lang/String;

    .line 1163
    iput-object v5, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    .line 1164
    iput-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->j:Ljava/lang/String;

    move v1, v2

    .line 1169
    :goto_3
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1170
    const v1, 0x7f0b0234

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->i:Ljava/lang/String;

    .line 1171
    const v1, 0x7f0b0235

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    .line 1172
    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->j:Ljava/lang/String;

    :goto_4
    move v3, v2

    .line 1176
    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    .line 1148
    goto :goto_1

    .line 1156
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 1140
    :catch_2
    move-exception v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_4

    :cond_2
    move v1, v3

    goto :goto_3
.end method

.method static synthetic b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 226
    invoke-static {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    const-string v1, "login_redirect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const/16 v1, 0x8a2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->h()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 6
    .parameter

    .prologue
    const v3, 0x7f0800dc

    const v5, 0x7f0800dd

    const v4, 0x7f0800db

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 733
    if-eqz p1, :cond_0

    move v0, v1

    .line 734
    :goto_0
    if-nez p1, :cond_1

    .line 735
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 736
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 737
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 750
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 733
    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 741
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 742
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v3, v0, :cond_2

    .line 743
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 744
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 746
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private static c(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v1, "calling_intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->s:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->x:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->q:Z

    return p1
.end method

.method static synthetic g(Lcom/facebook/katana/activity/login/RealLoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 435
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 436
    const v1, 0x7f0800d9

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 437
    const v2, 0x7f0800d0

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    .line 441
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 442
    iget-boolean v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->t:Z

    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 447
    :goto_0
    const/16 v1, 0xd

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 450
    return-void

    .line 445
    :cond_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->m:Z

    return v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 807
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    .line 809
    invoke-virtual {v0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_redirect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->setResult(I)V

    .line 817
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->finish()V

    .line 872
    :goto_0
    return-void

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;)V

    .line 821
    const/4 v0, 0x0

    .line 823
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "calling_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "calling_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 825
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v2, -0x10000001

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v0, v1

    .line 829
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    if-nez v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "new_android_ci_enabled"

    invoke-static {p0, v2}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "first_time_contact_import_displayed"

    invoke-static {p0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 834
    const-string v0, "first_time_contact_import_displayed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 837
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 854
    invoke-static {p0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 857
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "activity_launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 858
    if-eqz v1, :cond_4

    .line 859
    const-string v2, "activity_launcher"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    :cond_4
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/facebook/katana/service/vault/VaultManager;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/facebook/katana/activity/media/VaultOptIn;->f()Lcom/facebook/katana/activity/nux/BasicNuxController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/facebook/katana/activity/nux/BasicNuxController;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 866
    invoke-static {}, Lcom/facebook/katana/activity/media/VaultOptIn;->f()Lcom/facebook/katana/activity/nux/BasicNuxController;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/activity/nux/BasicNuxController;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 871
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->finish()V

    goto/16 :goto_0

    .line 838
    :cond_5
    if-nez v0, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "android_sync_setup_flow_enabled"

    invoke-static {p0, v2}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 845
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/SyncContactsSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    const-string v1, "add_account"

    iget-boolean v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 847
    iget-boolean v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    if-eqz v1, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 849
    iput-boolean v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->l:Z

    goto :goto_1

    .line 868
    :cond_6
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method static synthetic i(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/facebook/katana/activity/login/RealLoginActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->o:J

    return-wide v0
.end method

.method static synthetic k(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->q:Z

    return v0
.end method

.method static synthetic l(Lcom/facebook/katana/activity/login/RealLoginActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->p:I

    return v0
.end method

.method static synthetic m(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/view/FacebookProgressCircleView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->n:Lcom/facebook/katana/view/FacebookProgressCircleView;

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->s:Z

    return v0
.end method

.method static synthetic o(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic p(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->i()V

    return-void
.end method

.method static synthetic q(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/binding/AppSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/katana/activity/login/RealLoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->x:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 234
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_account"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    .line 240
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reg_login_nonce"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    if-nez v0, :cond_6

    .line 243
    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, v0

    .line 248
    :goto_0
    invoke-static {p0}, Lcom/facebook/katana/activity/login/VersionTasks;->a(Landroid/content/Context;)Lcom/facebook/katana/activity/login/VersionTasks;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/facebook/katana/activity/login/VersionTasks;->a()V

    .line 252
    invoke-static {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    sget-object v3, Lcom/facebook/katana/activity/login/RealLoginActivity$9;->a:[I

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :try_start_0
    invoke-static {p0}, Lcom/facebook/katana/util/RingtoneUtils;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_1

    .line 283
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 285
    const-string v4, "ringtone"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    if-eqz v0, :cond_3

    .line 297
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-static {p0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->a(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_3

    .line 300
    const v0, 0x7f0b0211

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 301
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->finish()V

    .line 415
    :cond_2
    :goto_2
    return-void

    .line 257
    :pswitch_0
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->g()V

    .line 262
    invoke-direct {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->i()V

    goto :goto_2

    .line 310
    :cond_3
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->setContentView(I)V

    .line 312
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->u:Landroid/widget/EditText;

    .line 313
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->v:Landroid/widget/EditText;

    .line 314
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->w:Landroid/widget/EditText;

    .line 317
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f0b0229

    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 327
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    if-eqz v1, :cond_4

    .line 334
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :cond_4
    if-eqz p1, :cond_5

    .line 338
    const-string v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->u:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Landroid/widget/EditText;)V

    .line 342
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->v:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Landroid/widget/EditText;)V

    .line 343
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->w:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Landroid/widget/EditText;)V

    .line 345
    new-instance v0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/login/RealLoginActivity$1;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    .line 367
    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 368
    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 371
    new-instance v0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;

    invoke-direct {v0, p0, v6}, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 373
    new-instance v0, Lcom/facebook/katana/activity/login/RealLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/login/RealLoginActivity$2;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    .line 388
    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->y:Landroid/os/Handler;

    new-instance v4, Lcom/facebook/katana/activity/login/RealLoginActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity$3;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookProgressCircleView;

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->n:Lcom/facebook/katana/view/FacebookProgressCircleView;

    .line 412
    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    const-string v0, "app_registration_login_nonce"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_6
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1181
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 797
    invoke-static {v0}, Lcom/facebook/katana/service/method/ApiLogging;->b(Landroid/content/Context;)V

    .line 798
    new-instance v1, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->a()V

    .line 799
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1086
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onAttachedToWindow()V

    .line 1088
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 1089
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1057
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->x:Z

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->v:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->w:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iput-boolean v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->x:Z

    .line 1064
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    invoke-direct {p0, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Z)V

    .line 1069
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->n:Lcom/facebook/katana/view/FacebookProgressCircleView;

    invoke-virtual {v0, v4}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setVisibility(I)V

    .line 1071
    iput-boolean v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->r:Z

    .line 1075
    :goto_0
    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 640
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 669
    :goto_0
    :pswitch_0
    return-void

    .line 642
    :pswitch_1
    sget-object v0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;->PASSWORD_ENTRY:Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;)V

    goto :goto_0

    .line 646
    :pswitch_2
    sget-object v0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;->LOGIN_APPROVALS_CODE_ENTRY:Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;)V

    goto :goto_0

    .line 650
    :pswitch_3
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/DeviceContactpoints;->a(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 652
    const-string v1, "r.php"

    invoke-static {p0, v1}, Lcom/facebook/katana/Constants$URL;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "contactpoints"

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 658
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 667
    :pswitch_4
    const-string v0, "help.php"

    invoke-static {p0, v0}, Lcom/facebook/katana/Constants$URL;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 668
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x7f0800d4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 1094
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1095
    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1097
    if-nez v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 1101
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    .line 549
    packed-switch p1, :pswitch_data_0

    .line 593
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 551
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 553
    const v1, 0x7f0b0228

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 554
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 555
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 560
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->i:Ljava/lang/String;

    const v2, 0x1080027

    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    const v0, 0x7f0b0269

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 566
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->i:Ljava/lang/String;

    const v2, 0x1080027

    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    const v0, 0x7f0b0269

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/facebook/katana/activity/login/RealLoginActivity$5;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/login/RealLoginActivity$5;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    const v0, 0x7f0b01b0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/facebook/katana/activity/login/RealLoginActivity$6;

    invoke-direct {v7, p0}, Lcom/facebook/katana/activity/login/RealLoginActivity$6;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->n:Lcom/facebook/katana/view/FacebookProgressCircleView;

    invoke-virtual {v0}, Lcom/facebook/katana/view/FacebookProgressCircleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, 0x1

    .line 1117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->l:Z

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x190

    const-string v2, "User canceled"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->a(Landroid/content/Intent;ILjava/lang/String;)V

    .line 520
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onDestroy()V

    .line 521
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->m:Z

    .line 508
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 512
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 600
    packed-switch p1, :pswitch_data_0

    .line 627
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 635
    return-void

    :pswitch_0
    move-object v0, p2

    .line 606
    check-cast v0, Landroid/app/AlertDialog;

    .line 607
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p2

    .line 614
    check-cast v0, Landroid/app/AlertDialog;

    .line 615
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 617
    const/4 v1, -0x1

    const v2, 0x7f0b0269

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/activity/login/RealLoginActivity$7;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/login/RealLoginActivity$7;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->n:Lcom/facebook/katana/view/FacebookProgressCircleView;

    invoke-virtual {v0}, Lcom/facebook/katana/view/FacebookProgressCircleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    const/4 v0, 0x1

    .line 1109
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 455
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 461
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 463
    iput-boolean v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->m:Z

    .line 464
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 465
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_2

    .line 466
    sget-object v0, Lcom/facebook/katana/activity/login/RealLoginActivity$9;->a:[I

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 493
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->removeDialog(I)V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 501
    :goto_0
    return-void

    .line 468
    :pswitch_0
    iput-boolean v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->s:Z

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->o:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->q:Z

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 473
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 475
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->k:Z

    if-nez v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->i()V

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->finish()V

    goto :goto_0

    .line 485
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 486
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->removeDialog(I)V

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 535
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "error_message"

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method
