.class Lcom/facebook/orca/prefs/OrcaSharedPreferences$3;
.super Ljava/lang/Object;
.source "OrcaSharedPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$3;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$3;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    .line 358
    return-void
.end method
