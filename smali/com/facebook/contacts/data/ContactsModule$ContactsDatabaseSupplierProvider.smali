.class Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/data/ContactsDatabaseSupplier;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/contacts/data/ContactsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/contacts/data/ContactsDatabaseSupplier;
    .locals 2

    .prologue
    .line 42
    new-instance v1, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    const-class v0, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-direct {v1, v0}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;-><init>(Lcom/facebook/contacts/data/ContactsDbSchemaPart;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;->b()Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    move-result-object v0

    return-object v0
.end method
