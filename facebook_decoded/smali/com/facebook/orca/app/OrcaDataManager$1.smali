.class Lcom/facebook/orca/app/OrcaDataManager$1;
.super Ljava/lang/Object;
.source "OrcaDataManager.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/OrcaDataManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaDataManager$1;->a:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->A:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->B:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager$1;->a:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaDataManager;->a(Lcom/facebook/orca/app/OrcaDataManager;)V

    .line 185
    :cond_1
    return-void
.end method
