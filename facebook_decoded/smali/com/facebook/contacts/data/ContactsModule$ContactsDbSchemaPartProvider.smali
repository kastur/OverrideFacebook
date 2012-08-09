.class Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/data/ContactsDbSchemaPart;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/contacts/data/ContactsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/contacts/data/ContactsDbSchemaPart;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-direct {v0}, Lcom/facebook/contacts/data/ContactsDbSchemaPart;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;->b()Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    move-result-object v0

    return-object v0
.end method
