.class public Lcom/facebook/katana/service/vault/VaultModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "VaultModule.java"


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultModule;->a:Landroid/app/Application;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/vault/VaultModule;)Landroid/app/Application;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultModule;->a:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    const-class v0, Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultManagerProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 35
    const-class v0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultImageUploadMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultImageUploadMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 38
    const-class v0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultNewImageUploaderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultNewImageUploaderProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 40
    const-class v0, Lcom/facebook/katana/service/vault/VaultImageFetcher;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultImageFetcherProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultImageFetcherProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 43
    const-class v0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 45
    const-class v0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultDevicePostMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultDevicePostMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 47
    const-class v0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceUpdateMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceUpdateMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 49
    const-class v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultGetSyncedImageStatusMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultGetSyncedImageStatusMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 52
    const-class v0, Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultImageGetMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultImageGetMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 54
    const-class v0, Lcom/facebook/katana/service/vault/methods/VaultDeletedImageGetMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule$VaultDeletedImageGetMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeletedImageGetMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 56
    return-void
.end method
