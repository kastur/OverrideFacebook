.class public Lcom/facebook/contacts/data/ContactsModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "ContactsModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/annotations/ContactsDb;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 23
    const-class v0, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 26
    const-class v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 31
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/annotations/IsShowContactCardEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/contactcard/IsShowContactCardEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 35
    return-void
.end method
