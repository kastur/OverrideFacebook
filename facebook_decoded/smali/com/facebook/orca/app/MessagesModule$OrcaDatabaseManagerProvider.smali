.class Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaDatabaseManager;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/app/OrcaDatabaseManager;
    .locals 6

    .prologue
    .line 1216
    new-instance v0, Lcom/facebook/orca/app/OrcaDatabaseManager;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/database/UsersDbSchemaPart;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/UsersDbSchemaPart;

    const-class v3, Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    const-class v4, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    const-class v5, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/app/OrcaDatabaseManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/database/UsersDbSchemaPart;Lcom/facebook/orca/database/ThreadsDbSchemaPart;Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;Lcom/facebook/contacts/data/ContactsDbSchemaPart;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1212
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;->b()Lcom/facebook/orca/app/OrcaDatabaseManager;

    move-result-object v0

    return-object v0
.end method
