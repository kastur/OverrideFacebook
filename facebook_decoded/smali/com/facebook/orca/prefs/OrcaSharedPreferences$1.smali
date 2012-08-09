.class Lcom/facebook/orca/prefs/OrcaSharedPreferences$1;
.super Ljava/lang/Object;
.source "OrcaSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$1;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$1;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-static {v0, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/lang/String;)V

    .line 78
    return-void
.end method
