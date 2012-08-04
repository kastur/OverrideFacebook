.class public Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
.super Ljava/lang/Object;
.source "ErrorDialogBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private final c:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/orca/ops/ServiceException;

.field private f:Landroid/app/Activity;

.field private g:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->g:Lcom/facebook/orca/app/OrcaAppType;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->f:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 5
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 34
    new-instance v3, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    const-class v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/app/OrcaAppType;

    const-class v4, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    return-object v3
.end method

.method static synthetic b(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Lcom/facebook/orca/ops/ServiceException;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iget-object v1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Ljava/lang/String;

    .line 87
    :cond_1
    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->generic_error_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    new-instance v1, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;-><init>(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)V

    .line 104
    new-instance v2, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;-><init>(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)V

    .line 116
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    iget-object v4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v5, Lcom/facebook/orca/R$string;->app_error_dialog_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v4, Lcom/facebook/orca/R$string;->dialog_ok:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->g:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->f()Lcom/facebook/orca/app/OrcaAppType$Audience;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Audience;->PUBLIC:Lcom/facebook/orca/app/OrcaAppType$Audience;

    if-eq v0, v1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->report_error_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "error_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 130
    return-object v0
.end method

.method public final a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public final a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->f:Landroid/app/Activity;

    .line 74
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    .line 64
    return-object p0
.end method
