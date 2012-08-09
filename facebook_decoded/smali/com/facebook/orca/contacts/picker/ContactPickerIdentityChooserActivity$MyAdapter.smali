.class public Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPickerIdentityChooserActivity.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/content/res/Resources;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    .line 222
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    .line 223
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->d:Landroid/content/res/Resources;

    .line 224
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 302
    .line 303
    if-nez p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_contact_picker_identitiy_chooser_facebook_messenger_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 307
    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 278
    .line 279
    if-nez p2, :cond_0

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_contact_picker_identity_chooser_row:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 284
    :cond_0
    iget-object v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->a:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->e()Ljava/lang/String;

    move-result-object v1

    .line 285
    iget-object v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v2

    .line 286
    sget v0, Lcom/facebook/orca/R$id;->identifier_alternate_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    iget-object v3, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserInCluster;->b()Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/users/UserInCluster$MatchType;->NAME:Lcom/facebook/orca/users/UserInCluster$MatchType;

    if-ne v3, v4, :cond_1

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_0
    sget v0, Lcom/facebook/orca/R$id;->identifier_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    iget-object v1, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->d:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserIdentifier;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-object p2

    .line 292
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 311
    .line 312
    if-nez p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_contact_picker_identitiy_chooser_add_phone_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 316
    :cond_0
    return-object p1
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    .line 228
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 262
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 239
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    .line 241
    :cond_0
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 242
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 244
    const/4 v0, 0x2

    goto :goto_0

    .line 246
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 268
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :cond_0
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 271
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x3

    return v0
.end method
