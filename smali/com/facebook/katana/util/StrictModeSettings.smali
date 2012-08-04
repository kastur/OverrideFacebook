.class public Lcom/facebook/katana/util/StrictModeSettings;
.super Ljava/lang/Object;
.source "StrictModeSettings.java"


# instance fields
.field private final a:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

.field private final b:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    const-class v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/katana/util/StrictModeSettings;->a:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    .line 43
    new-instance v0, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    const-class v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/katana/util/StrictModeSettings;->b:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    .line 44
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/katana/util/StrictModeSettings;->a:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;->a(Landroid/content/Context;)Z

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/util/StrictModeSettings;->b:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;->a(Landroid/content/Context;)Z

    .line 56
    return-void
.end method

.method public final a(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/katana/util/StrictModeSettings;->a:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    const-string v1, "Thread Policy"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/facebook/katana/util/StrictModeSettings;->b:Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;

    const-string v1, "VM Policy"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/katana/util/StrictModeSettings$PolicyBuilder;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 50
    return-void
.end method
