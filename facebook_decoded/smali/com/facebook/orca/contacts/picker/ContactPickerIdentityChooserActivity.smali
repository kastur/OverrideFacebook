.class public Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ContactPickerIdentityChooserActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

.field private f:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

.field private g:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/facebook/orca/users/UserCluster;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 205
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserCluster;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/users/UserCluster;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 110
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserInCluster;

    .line 111
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 113
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    invoke-direct {v5, p1, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;-><init>(Lcom/facebook/orca/users/UserCluster;Lcom/facebook/orca/users/UserInCluster;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 114
    invoke-direct {p0, v2, v5}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a(Ljava/util/Map;Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->b(I)V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;",
            ">;",
            "Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->b()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    .line 134
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iget-object v2, p2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->a:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserCluster;->d()Lcom/facebook/orca/users/User;

    move-result-object v2

    iget-object v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    iget-object v3, p2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 145
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v2, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    if-eqz v2, :cond_1

    .line 149
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    .line 150
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserCluster;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserCluster;->c()Lcom/facebook/orca/users/User;

    move-result-object v3

    .line 152
    new-instance v2, Lcom/facebook/orca/users/PickedUser;

    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v3}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    iget-object v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    invoke-direct {v2, v4, v0}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v3, "act_picked_contact_fb_messages_phone"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;)V

    move v0, v1

    .line 175
    :goto_0
    if-eqz v2, :cond_3

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    const-string v1, "pickedUser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    const-string v1, "cluster"

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v6, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 188
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->finish()V

    .line 189
    return-void

    .line 157
    :cond_0
    new-instance v2, Lcom/facebook/orca/users/PickedUser;

    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    iget-object v5, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v5

    iget-object v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    invoke-direct {v4, v5, v0}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {v2, v4, v3}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v3, "act_picked_contact_phone"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;)V

    move v0, v1

    .line 162
    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->c()Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 166
    new-instance v0, Lcom/facebook/orca/users/PickedUser;

    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {v0, v4, v3}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 169
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v3, "act_picked_contact_fb_messages"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    .line 170
    goto :goto_0

    .line 171
    :cond_2
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b:Ljava/lang/Object;

    if-ne v0, v2, :cond_5

    .line 172
    const/4 v0, 0x1

    move-object v2, v3

    goto :goto_0

    .line 180
    :cond_3
    if-eqz v0, :cond_4

    .line 181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    const-string v2, "cluster"

    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    const-string v2, "addNewPhone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v6, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setResult(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    move-object v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 69
    sget v0, Lcom/facebook/orca/R$layout;->orca_contact_picker_identity_chooser:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setContentView(I)V

    .line 71
    sget v0, Lcom/facebook/orca/R$id;->identifiers_title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->h:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/facebook/orca/R$id;->identifiers_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->i:Landroid/widget/ListView;

    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 77
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 82
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    .line 83
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    .line 84
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 86
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    const-string v1, "cluster"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserCluster;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->finish()V

    .line 106
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->context_picker_identifier_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserCluster;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->j:Lcom/facebook/orca/users/UserCluster;

    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a(Lcom/facebook/orca/users/UserCluster;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->notifyDataSetChanged()V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "cp_chooser"

    return-object v0
.end method
