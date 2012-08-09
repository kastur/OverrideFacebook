.class Lcom/facebook/orca/debug/OrcaLogImpl$1;
.super Ljava/lang/Object;
.source "OrcaLogImpl.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/debug/OrcaLogImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/debug/OrcaLogImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/debug/OrcaLogImpl$1;->a:Lcom/facebook/orca/debug/OrcaLogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->B:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/debug/OrcaLogImpl$1;->a:Lcom/facebook/orca/debug/OrcaLogImpl;

    invoke-static {v0}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Lcom/facebook/orca/debug/OrcaLogImpl;)V

    .line 74
    :cond_0
    return-void
.end method
