.class Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/contacts/data/ContactsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseProvider;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
