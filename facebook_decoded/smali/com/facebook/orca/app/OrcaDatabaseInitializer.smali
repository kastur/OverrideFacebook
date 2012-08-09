.class public Lcom/facebook/orca/app/OrcaDatabaseInitializer;
.super Ljava/lang/Object;
.source "OrcaDatabaseInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaDatabaseManager;

.field private final b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaDatabaseManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->c:Landroid/content/SharedPreferences;

    .line 23
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->a:Lcom/facebook/orca/app/OrcaDatabaseManager;

    .line 25
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->a:Lcom/facebook/orca/app/OrcaDatabaseManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->c()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->a:Lcom/facebook/orca/app/OrcaDatabaseManager;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaDatabaseManager;->a()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    .line 32
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->a:Lcom/facebook/orca/app/OrcaDatabaseManager;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaDatabaseManager;->b()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    .line 33
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->a:Lcom/facebook/orca/app/OrcaDatabaseManager;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaDatabaseManager;->d()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    .line 34
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->a:Lcom/facebook/orca/app/OrcaDatabaseManager;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaDatabaseManager;->e()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    .line 37
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;->c:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefsDbOpenHelper;Landroid/content/SharedPreferences;)V

    .line 41
    return-void
.end method
