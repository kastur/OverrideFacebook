.class Lcom/facebook/katana/orca/FbandroidAppModule$ShortcutDialogInjectorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/activity/ShortcutDialogInjector;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidAppModule$ShortcutDialogInjectorProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/katana/activity/ShortcutDialogInjector;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/katana/activity/ShortcutDialogInjector;

    invoke-direct {v0}, Lcom/facebook/katana/activity/ShortcutDialogInjector;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/katana/orca/FbandroidAppModule$ShortcutDialogInjectorProvider;->b()Lcom/facebook/katana/activity/ShortcutDialogInjector;

    move-result-object v0

    return-object v0
.end method
