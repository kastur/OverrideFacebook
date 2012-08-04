.class public Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;
.super Ljava/lang/Object;
.source "IsAudioMessageEnabledProvider.java"

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
.field private static a:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final c:Lcom/facebook/orca/app/OrcaAppType;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "messenger_audio_message_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/OrcaAppType;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->c:Lcom/facebook/orca/app/OrcaAppType;

    .line 35
    iput-object p3, p0, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->d:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private b()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->f()Lcom/facebook/orca/app/OrcaAppType$Audience;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/app/OrcaAppType$Audience;->PUBLIC:Lcom/facebook/orca/app/OrcaAppType$Audience;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->d:Landroid/content/Context;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

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
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
