.class Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;
.super Ljava/lang/Object;
.source "OrcaSharedPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Ljava/util/Set;

.field private synthetic c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object p2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;->b:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/util/Map;Ljava/util/Set;)V

    .line 337
    return-void
.end method
