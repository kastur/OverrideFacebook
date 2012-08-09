.class public Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;
.super Ljava/lang/Object;
.source "IsDeliveredReadReceiptEnabledProvider.java"

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "messenger_read_receipts_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 29
    return-void
.end method

.method private b()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
