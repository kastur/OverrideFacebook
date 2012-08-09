.class public Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;
.super Ljava/lang/Object;
.source "IsClientSmsPermittedProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final c:Lcom/facebook/orca/app/OrcaAppType;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "messenger_client_sms_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/OrcaAppType;Ljavax/inject/Provider;Landroid/content/Context;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/facebook/orca/annotations/MeUser;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/app/OrcaAppType;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->c:Lcom/facebook/orca/app/OrcaAppType;

    .line 42
    iput-object p3, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->d:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->e:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->f()Lcom/facebook/orca/app/OrcaAppType$Audience;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/app/OrcaAppType$Audience;->PUBLIC:Lcom/facebook/orca/app/OrcaAppType$Audience;

    if-eq v1, v2, :cond_0

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-direct {p0, v1}, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_SMS"

    invoke-direct {p0, v1}, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.WRITE_SMS"

    invoke-direct {p0, v1}, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.SEND_SMS"

    invoke-direct {p0, v1}, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
