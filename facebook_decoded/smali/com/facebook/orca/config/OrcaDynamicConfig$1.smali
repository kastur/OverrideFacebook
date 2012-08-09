.class Lcom/facebook/orca/config/OrcaDynamicConfig$1;
.super Ljava/lang/Object;
.source "OrcaDynamicConfig.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/config/OrcaDynamicConfig;


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig$1;->a:Lcom/facebook/orca/config/OrcaDynamicConfig;

    invoke-static {v0, p1}, Lcom/facebook/orca/config/OrcaDynamicConfig;->a(Lcom/facebook/orca/config/OrcaDynamicConfig;Lcom/facebook/orca/prefs/PrefKey;)V

    .line 59
    return-void
.end method
